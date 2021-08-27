<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Webklex\IMAP\Facades\Client;

class IndexController extends Controller
{
    public function index()
    {
        $client = Client::account('default');

        //Connect to the IMAP Server
        $client->connect();

        $messages = $client->getFolder('INBOX')->query()->all()->limit(10)->get();

        return view('messages')->with(compact('messages'));
    }
}
