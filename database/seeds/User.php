<?php

use Illuminate\Database\Seeder;

class User extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert(
            [
                'name' => 'Hồng Hồng',
                'email' => 'danglam932@gmailcom',
                'password' => password_hash('123456', PASSWORD_DEFAULT),
                'image' => 'uploads/product/1600329839_logo.png',
                'role_id' => 1,
                'is_active' => 1,
                'created_at' => new DateTime()
            ]);
    }
}
