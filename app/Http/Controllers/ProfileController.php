<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\URL;
use App\Profile;
use App\User;
use Auth;


class ProfileController extends Controller
{

    /* display the profile template form */
    public function profile()
    {
    	return view("profiles.profile");
    }

    /* This is how we add the profile */
    public function addprofile(Request $request)
    {
        // server side validation
    	$this->validate($request, [
    		'designation' => 'required',
    		'about' => 'required',
    		'profile_pic' => 'required'
    		]);
    	$profiles = new Profile;
    	$profiles->designation = $request->input('designation');
    	$profiles->about = $request->input('about');
    	
    	$profiles->user_id = Auth::user()->id;
    	if(Input::hasFile('profile_pic')) {
    		$file = Input::file('profile_pic');
    		$file->move(public_path().'/uploads', $file->getClientOriginalName());
    		$url = URL::to("/")."/uploads/".$file->getClientOriginalName();
    		// return $url;
    		// exit();
    	}
    	$profiles->profile_pic = $url;
    	$profiles->save();
    	return redirect('/home')->with('response', 'Profile Added Successfully');
    }

    /* Load user's profile in edit page */
    public function edit()
    {
        $user_id = Auth::user()->id;
        $profile = DB::table('users')
                   ->join('profiles', 'users.id', '=', 'profiles.user_id')
                   ->select('users.*', 'profiles.*')
                   ->where(['profiles.user_id' => $user_id])
                   ->first();
                  // dd($profile);
        return view('profiles.edit')->with('info', $profile);
    }

    /* This is how we update the profile */

    public function update(Request $request)
    {
        $this->validate($request, [
            'designation' => 'required',
            'about' => 'required'
        ]);
        $user_id = Auth::user()->id;
        $profile = Profile::find($user_id);//dd($profile->designation);
        $profile->designation = $request->designation;
        $profile->about = $request->about;
        if($request->hasFile('profile_pic')) {
            $file = Input::file('profile_pic');
            $file->move(public_path().'/uploads', $file->getClientOriginalName());
            $url = URL::to("/")."/uploads/".$file->getClientOriginalName();
            // return $url;
            // exit();
            // delete file from directory
            if(file_exists($url)) {//dd("yes");
                unlink($url);
            }
            $profile->profile_pic = $url;
        }
        $profile->save();
        return redirect()->route('home')->with('response', 'Data updated');
       
    }
}
