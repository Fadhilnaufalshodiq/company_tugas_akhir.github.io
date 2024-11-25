<?php

namespace Database\Seeders;

use App\Models\Contact;
use Illuminate\Database\Seeder;

class ContactSeeder extends Seeder
{
    public function run()
    {
        Contact::create([
            'name' => 'Kontak Kami',
            'description' => 'lorem ipsum',
            'logo' => 'logo.png',
            'alamat' => 'Jalan sasak 2 dalam Nomor 25B Kebon Jeruk, Jakarta Barat 11550',
            'email' => 'fr.florist@yahoo.com (ig : fr.florist)',
            'telepon_wawan' => '081323101985',
            'telepon_asti' => '085775590100',
            'telepon_adang' => '085280746748',
            'maps_embed' => 'maps.com',
        ]);
    }
}
