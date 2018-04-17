<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/27
 * Time: 20:35
 */

namespace app\index\controller;

use app\index\model\UserLocation;
use think\Db;
use think\Request;
use think\Session;
use think\Controller;

class Exhibition extends Controller
{
     public function exhibitionPersonal() {
         $location_id = Session::get('user_location_id')?Session::get('user_location_id'):'118';

         $location_info =  UserLocation::get($location_id);

         $latitude = $location_info['latitude'];
         $longitude = $location_info['longitude'];
         $this->assign( 'location', ['latitude'=>$latitude, 'longitude'=>$longitude]);

         return $this->fetch();
     }

     public function exhibitionAll() {


         return $this->fetch();
     }

     public function getAllBook() {

         $goods = Db::name('user_book')->alias('ub')
             ->join('hand_book b', 'b.id = ub.book_id')
             ->join('hand_user_location ul', 'ul.id = ub.user_location_id')
             ->field('isbn,latitude,longitude')
             ->select();

         $markers = [];
         foreach ($goods as $key=>$value) {

             $position = [$value['longitude'],$value['latitude']];
             $icon = '/second-hand/public/download/bookPic/map/'. $value['isbn'] .'.jpg';
             //$marker = ['id'=> $icon, 'icon'=> $icon, 'position'=> $position];
             $marker = ['id'=> $icon, 'icon'=> $icon, 'longitude'=> $value['longitude'], 'latitude'=>$value['latitude']];
             array_push($markers,$marker);
         }
         return json($markers);
     }

     public function getUserBook() {

         $user_id = Session::get('user_id');

         $goods = Db::name('user_book')->alias('ub')->where('ub.user_id', $user_id)
                ->join('hand_book b', 'b.id = ub.book_id')
                ->join('hand_user_location ul', 'ul.id = ub.user_location_id')
                ->field('isbn,latitude,longitude')
                ->select();

         $markers = [];
         foreach ($goods as $key=>$value) {

                 $position = [$value['longitude'],$value['latitude']];
                 $icon = '/second-hand/public/download/bookPic/map/'. $value['isbn'] .'.jpg';
                 $marker = ['icon'=> $icon, 'position'=> $position];
                 array_push($markers,$marker);
         }
         return json($markers);
     }

     public function connection(Request $request) {

         $isbn = $request->param('isbn');
         $userId = $request->param('userId');
         $this->assign( 'userId', $userId);
         $this->assign('isbn', $isbn);
         var_dump($isbn);
         return $this->fetch();

     }
}