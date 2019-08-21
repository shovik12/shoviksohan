<?php

namespace App\Http\Controllers;

use App\ideaport;
use App\User;
use App\Account;
use App\idea;
use App\Donation;
use App\moneyseized;
use App\complain;

use Illuminate\Http\Request;

class IdeaController extends Controller
{
      public function add(){

		
		return view('idea.Registration');
    }

    public function create(Request $req){
    

    	$user = new ideaport();

    	$user->id = $req->id;
    	$user->name = $req->name;
    	$user->email = $req->email;
    	$user->phone = $req->phone;
    	$user->School = $req->School;
    	$user->college = $req->college;
    	$user->University = $req->University;
    	$user->Address = $req->Address;
    	$user->age = $req->age;

    	
    	$user->save();

		return view('index');
    }

        public function showrep(Request $req){
		$stdList = ideaport::where('type','idearepresentor')->get();

	

    	return view('idea.replist',['std'=> $stdList]);
    }


     public function editrep($id){

		$detail = ideaport::find($id);

		
		return view('idea.editrep', ['details'=>$detail]);
    }


    public function updaterep(Request $req, $id){

    	$user = ideaport::find($id);

    	$user->name = $req->name;
    	$user->email = $req->email;
    	$user->phone = $req->phone;
    	$user->School = $req->School;
    	$user->college = $req->college;
    	$user->University = $req->University;
    	$user->Address = $req->Address;
    	$user->age = $req->age;
    	$user->save();

		return redirect()->route('idea.replist');
    }

}
