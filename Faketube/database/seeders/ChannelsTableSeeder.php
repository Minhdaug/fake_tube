<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Channel;
use Faker\Factory as FakerFactory;
class ChannelsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = FakerFactory::create();

        for ($i = 1; $i <= 10; $i++) {
            Channel::create([
                'channelname' => $faker->company,
                'description' => $faker->paragraph,
                'subscriberscount' => $faker->numberBetween(1000, 100000),
                'URL' => $faker->url,
            ]);
        }
    }
}
