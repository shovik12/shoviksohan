<?php

namespace App\Http\Controllers;
use App\User;
use App\Account;
use App\idea;
use App\Donation;
use App\idea_review;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class investorController extends Controller
{
    public function index(Request $req){

        $request = $req->session()->get('username');
        $details = Account::where('username',$request)->get();

        $temp = idea::all();

		return view('investor.index',['new'=> $details[0]],['t'=>$temp]);
	}

	 public function profile(Request $req){
		return view('investor.profile');
	}

	public function show(Request $req){
		$request = $req->session()->get('username');
    	$details = User::where('username',$request)->get();

    	return view('investor.profile', ['detail'=> $details]);
    }

    public function edit($id){

		$detail = User::find($id);
		return view('investor.edit', ['details'=>$detail]);
    }

    public function update(Request $req, $id){

    	$user = User::find($id);

    	$user->username = $req->uname;
    	$user->name = $req->name;
    	$user->email = $req->email;
    	$user->phone = $req->phone;
    	$user->save();

		return redirect()->route('investor.profile');
    }

    public function add(){

		
		return view('investor.Registration');
    }

    public function create(Request $req){
    	/*echo "hii";*/

    	$user = new User();

    	$user->username = $req->uname;
    	$user->name = $req->name;
    	$user->email = $req->email;
    	$user->phone = $req->phone;
    	$user->password = $req->password;
    	$user->type = 'investor';
    	$user->save();

		return view('index');
    }
    public function credit(){

        
        return view('investor.add_credit');
    }

    public function addcredit(Request $req){
        /*echo "hii";*/

        
        $request = $req->session()->get('username');

        
        $details = Account::where('username',$request)->get();

        global $temp;
        
        if(count($details)>0)
        {
            foreach ($details as $value) {
                 $temp =(int) $value['balance'];
            }
            $temp = $temp + (int)$req->amount;
             //$user = new Account();
            
            $details->username = $request;
            $details->card_number = $req->cnum;
            $details->balance = $temp; 

            
             $result= DB::table('accountinfo')
            ->where('username', $request)
            ->update(array('balance' => $temp));
            
        }

        else
        {
            $user = new Account();
            $user->username = $request;
            $user->card_number = $req->cnum;
            $user->balance = $req->amount; 
            $user->save();
        }

        

         return redirect()->route('investor.index');
    }

    public function withdraw(Request $req){

        $request = $req->session()->get('username');
        $details = Account::where('username',$request)->get();
        
        return view('investor.withdraw',['new'=> $details[0]]);
        
    }

    public function withdrawverify(Request $req){

        $request = $req->session()->get('username');
        $details = Account::where('username',$request)->get();
        global $temp;
        foreach ($details as $value) {
                 $temp =(int) $value['balance'];
            }
        $tr =$req->amount;
        if($tr >$temp)
        {
            echo "Insuficient Amount..";
        }

        else
        {
            $temp = $temp - (int)$req->amount;
            $result= DB::table('accountinfo')
            ->where('username', $request)
            ->update(array('balance' => $temp));
            $details = Account::where('username',$request)->get();

            $temp = idea::all();
            return view('investor.index',['new'=> $details[0]],['t'=>$temp]);
        }   
        
    }

    public function donate(Request $req,$id){

        $request = $req->session()->get('username');
        $details = Account::where('username',$request)->get();

        $temp = idea::find($id);
        
        return view('investor.donate', ['new'=>$details[0]],['t'=>$temp]);   
    }

    public function donateverify(Request $req,$id){

        $request = $req->session()->get('username');
        $details = Account::where('username',$request)->get();

        global $temp;
        foreach ($details as $value) {
                 $temp =(int) $value['balance'];
            }
        $tr = $req->amount;

        if($tr >$temp)
        {
            echo "Insuficient Amount..";
        }

        else
        {
            $temp = $temp - (int)$req->amount;
            $result= DB::table('accountinfo')
            ->where('username', $request)
            ->update(array('balance' => $temp));
            $details = Account::where('username',$request)->get();


            $sw = idea::where('id',$id)->get();             
            global $temp;
            foreach ($sw as $value) {
                     $temp =(int) $value['donated_amount'];
                }
            $tr=$tr+$temp;

            $sr= DB::table('idea')
            ->where('id', $id)
            ->update(array('donated_amount' => $tr));

            

            $sp =new Donation();
            $sp->investor_name = $request;

            $sk = idea::where('id',$id)->get();             
            global $temp;
            foreach ($sk as $value) {
                     $temp = $value['username'];
                }

            $sp->representor_name = $temp;
            $sp->ammount=$tr;
            $sp->date = date('Y-m-d');
            $sp->save();

            $temp = idea::all();


            return view('investor.index',['new'=> $details[0]],['t'=>$temp]);
            
        } 
    }


    public function history(Request $req){

        $request = $req->session()->get('username');
        $details = Donation::where('investor_name',$request)->get();
        
        return view('investor.history', ['new'=>$details]);   
    }


    public function comment(Request $req){

        $request = $req->session()->get('username');
        $details = new idea_review();
        $details->username = $request;
        $details->idea_id = $req->r;
        $details->comment = $req->review;
        $details->save();

        
        $request = $req->session()->get('username');
        $details = Account::where('username',$request)->get();

        $temp = idea::all();

        return view('investor.index',['new'=> $details[0]],['t'=>$temp]);
           
    }
          
    


}
