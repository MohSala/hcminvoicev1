<?php

use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




Auth::routes();
// Route::get('/login','LoginController');
Route::get('/resetPassword', 'HomeController@viewReset');
Route::get('/', 'HomeController@invoiceCount')->name('invoiceCount');

//puchase orders
Route::get('/viewPurchaseOrders', 'HomeController@viewPurchaseOrders')->name('viewPurchaseOrders');
Route::post('/addPurchase', 'HomeController@addPurchase')->name('addPurchase');
Route::get('/viewPurchaseItems', 'HomeController@viewPurchaseItems')->name('viewPurchaseItems');
Route::post('/addPurchaseItems', 'HomeController@addPurchaseItems')->name('addPurchaseItems');

//organization routes
Route::get('/about', 'HomeController@about')->name('about');
Route::get('/manageOrg', 'HomeController@manageOrg')->name('manageOrg');
Route::get('/send_invoice', 'HomeController@sendToOrg')->name('sendToOrg');
Route::post('/addOrg', 'HomeController@addOrg')->name('addOrg');
Route::get('/organization/modals/editOrganization', 'HomeController@editOrganization')->name('editOrg');
Route::get('/manageInvoice', 'HomeController@manageInvoice')->name('manageInvoice');
Route::post('/addInvoice', 'HomeController@addInvoice')->name('addInvoice');
Route::get('/addItem', 'HomeController@addItem')->name('addItem');
Route::get('/organization/modals/editItem', 'HomeController@editItem')->name('editItem');
Route::get('/organization/modals/editSub', 'HomeController@editSub')->name('editSub');
Route::get('/organization/modals/editPurchase', 'HomeController@editPurchase')->name('editPurchase');
Route::post('/add_item', 'HomeController@add_item')->name('add_item');

//pdf functions
Route::get('/generateInvoice', 'HomeController@generateInvoice')->name('generateInvoice');
Route::get('/downloadPDF', 'HomeController@downloadPDF');
Route::get('/pdf', 'HomeController@pdf');
Route::get('/subPDF', 'HomeController@subPDF');
Route::get('/quote', 'HomeController@quote');
Route::get('/subQuote', 'HomeController@subQuote');
Route::get('/download', 'HomeController@download')->name('download');
Route::get('/popdf', 'HomeController@popdf')->name('popdf');

Route::get('workflows/alter-status', 'WorkflowController@alterStatus')->name('workflows.alter-status');
Route::resource('workflows', 'WorkflowController', ['names' => ['create' => 'workflows.create', 'index' => 'workflows', 'store' => 'workflows.save', 'edit' => 'workflows.edit', 'update' => 'workflow.update', 'show' => 'workflows.view', 'destroy' => 'workflows.delete']]);
Route::get('/reviewInvoice', 'HomeController@reviewInvoice')->name('reviewInvoice');
Route::post('/approve_invoice', 'HomeController@approveInvoice')->name('approveInvoice');
Route::get('/userList', 'HomeController@viewUserList')->name('userList');
Route::post('/approve_change', 'HomeController@changeUserType')->name('changeUserType');
Route::get('/organization/modals/changeUserType', 'HomeController@changeUserType')->name('changeUserType');

//delete
Route::delete('/delete/{id}', 'HomeController@delete')->name('delete');
Route::delete('/deleteQuote/{id}', 'HomeController@delete')->name('deleteQuote');
Route::delete('/deletePurchase/{id}', 'HomeController@deletePurchase')->name('deletePurchase');

//subscription based invoices
Route::get('/viewSubInvoice', 'HomeController@viewSub')->name('viewSubInvoice');
Route::post('/addSubInvoice', 'HomeController@addSubInvoice')->name('addSubInvoice');
Route::get('/addNewSubInvoice', 'HomeController@viewSubAddItem')->name('addNewSubInvoice');
Route::get('/add-vat/{id}', 'HomeController@addvat')->name('add.vat');
Route::get('/remove-vat/{id}', 'HomeController@removevat')->name('remove.vat');
