<?php

namespace App\Http\Controllers;

use App\Jobs\TestQueue;
use Carbon\Carbon;
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
    public function pushQueue()
    {
        TestQueue::dispatch(
            title: "Test Queue ".Carbon::now()
        );
        return "Queue dispatched";
    }

    public function listQueue()
    {
        return \App\Models\TestQueue::all();
    }
}
