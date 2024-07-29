<?php

namespace App\Http\Controllers;

abstract class Controller
{
    public function HomeController(string $UNTRUCICI):\View{
        return view('Homepage', [
            '/' => HomePage::trucla(?)
        ]);
    }
}
