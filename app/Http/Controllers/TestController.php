<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class TestController extends Controller
{
    public function test()
    {
        echo "Test Redis: <br/>";
        Cache::set('foo', 'bar');
        return "Cache:".Cache::get('foo');
    }
}
