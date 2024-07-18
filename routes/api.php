<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\Student\FeeAPIController;
use App\Http\Controllers\Api\Student\BookAPIController;
use App\Http\Controllers\Api\Student\HomeAPIController;
use App\Http\Controllers\Api\Student\EventAPIController;
use App\Http\Controllers\Api\Parent\StudentAPIController;
use App\Http\Controllers\Api\Student\ResultAPIController;
use App\Http\Controllers\Api\Student\ProfileAPIController;
use App\Http\Controllers\Api\Student\SubjectAPIController;
use App\Http\Controllers\Api\Student\TeacherAPIController;
use App\Http\Controllers\Api\Student\ExamTypeAPIController;
use App\Http\Controllers\Api\Student\HomeworkAPIController;
use App\Http\Controllers\Api\Student\AttendanceAPIController;
use App\Http\Controllers\Api\Student\IssuedBookAPIController;
use App\Http\Controllers\Api\Student\OnlineExamAPIController;
use App\Http\Controllers\Api\Student\SchoolInfoAPIController;
use App\Http\Controllers\Api\Student\ExamRoutineAPIController;
use App\Http\Controllers\Api\Student\StudentInfoAPIController;
use App\Http\Controllers\Api\Student\ClassRoutineAPIController;
use App\Http\Controllers\Api\Parent\HomeworkAPIController as ParentHomeworkAPIController;

Route::middleware(saasApiMiddleware())->group(function () {
    Route::post('/register',                                            [AuthController::class, 'register']);
    Route::post('/login',                                               [AuthController::class, 'login']);
    Route::post('/forgot-password',                                     [AuthController::class, 'forgotPassword']);
    Route::post('/reset-password',                                      [AuthController::class, 'resetPassword']);

    Route::group(['middleware' => ['auth:api']], function () {
        Route::post('update-password',                                  [AuthController::class, 'updatePassword']);
        Route::post('logout',                                           [AuthController::class, 'logout']);


        Route::group(['prefix' => 'student'], function () {
            Route::get('profile',                                       [ProfileAPIController::class, 'profile']);
            Route::post('profile',                                      [ProfileAPIController::class, 'update']);
            Route::get('student-info',                                  StudentInfoAPIController::class);
            Route::get('home',                                          HomeAPIController::class);
            Route::get('subjects',                                      SubjectAPIController::class);
            Route::get('class-routines',                                [ClassRoutineAPIController::class, 'index']);
            Route::get('exam-types',                                    ExamTypeAPIController::class);
            Route::get('exam-routines',                                 ExamRoutineAPIController::class);
            Route::get('fees/payment-gateways',                         [FeeAPIController::class, 'paymentGateways']);
            Route::get('fee-groups',                                    [FeeAPIController::class, 'feeGroups']);
            Route::get('fees/{fee_group_id}',                           [FeeAPIController::class, 'fees']);
            Route::get('events',                                        [EventAPIController::class, 'index']);
            Route::get('events/{id}',                                   [EventAPIController::class, 'show']);
            Route::get('dashboard-events',                              [EventAPIController::class, 'dashboardEvents']);
            Route::get('online-exam-types',                             [OnlineExamAPIController::class, 'onlineExamTypes']);
            Route::get('online-exams',                                  [OnlineExamAPIController::class, 'index']);
            Route::get('online-exam-questions/{online_exam_id}',        [OnlineExamAPIController::class, 'onlineExamQuestions']);
            Route::post('online-exams/{online_exam_id}',                [OnlineExamAPIController::class, 'store']);
            Route::get('online-exams/result/{online_exam_id}',          [OnlineExamAPIController::class, 'result']);
            Route::get('results',                                       [ResultAPIController::class, 'index']);
            Route::get('attendances',                                   [AttendanceAPIController::class, 'index']);
            Route::get('attendance-progress',                           [AttendanceAPIController::class, 'attendanceProgress']);
            Route::get('yearly-present-percentage',                     [AttendanceAPIController::class, 'yearlyPresentPercentage']);
            Route::get('school-info',                                   [SchoolInfoAPIController::class, 'index']);
            Route::get('current-session-teachers',                      [TeacherAPIController::class, 'currentSessionTeachers']);
            Route::get('teachers/{id}',                                 [TeacherAPIController::class, 'show']);
            Route::get('teachers/assign-subjects/{id}',                 [TeacherAPIController::class, 'assignSubjects']);
            Route::get('homework',                                      [HomeworkAPIController::class, 'index']);
            Route::post('homework/submit/',                             [HomeworkAPIController::class,'submit']);
            Route::get('book-list/',                                    [BookAPIController::class,'index']);
            Route::get('issued-book-list',                              [IssuedBookAPIController::class, 'index']);

        });


        Route::group(['prefix' => 'parent'], function () {
            Route::get('students',                                      [StudentAPIController::class, 'index']);
            Route::get('homework',                                      [ParentHomeworkAPIController::class, 'index']);
            Route::get('book-list/',                                    [BookAPIController::class,'index']);
            Route::get('issued-book-list',                              [IssuedBookAPIController::class, 'index']);
        });
    });
});
