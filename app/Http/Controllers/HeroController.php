<?php

namespace App\Http\Controllers;

use App\Models\Hero;
use Illuminate\Http\Request;
use Inertia\Inertia;

class HeroController extends Controller
{
    public function getDamage()
    {
        $heroes = Hero::with('weapons')->get();
        foreach($heroes as $hero){

            $damage_sum = 0; 
            foreach ($hero->weapons as $weapon) {
                $damage_sum += $weapon->damage;
            }
            $hero->total_damage = $damage_sum;
        }
        return Inertia::render('Heroes',['heroes'=>$heroes]);
    }
}
