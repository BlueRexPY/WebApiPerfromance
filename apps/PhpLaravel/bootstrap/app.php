<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Support\Facades\Route;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        // Define routes with NO middleware group — all web/session/CSRF overhead removed.
        // SESSION_DRIVER=array is also set as a safety net in docker-compose.
        using: function () {
            Route::group(['middleware' => []], function () {
                require base_path('routes/web.php');
            });
        }
    )
    ->withMiddleware(function (Middleware $middleware) {
        // No global middleware adjustments needed.
    })
    ->withExceptions(function (Exceptions $exceptions) {
        // Default exception handling.
    })->create();
