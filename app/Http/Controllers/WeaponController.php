<?php

namespace App\Http\Controllers;

use App\Models\Weapon;
use Illuminate\Http\Request;
use Inertia\Inertia;

class WeaponController extends Controller
{
    public function index()
    {
        $weapons = Weapon::with('heroes')->get();
        foreach($weapons as $weapon){

            $weapon->total_heroes_count = count($weapon->heroes);
        }
        return Inertia::render('Weapon',['weapons'=>$weapons]);
    }
}
