<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Login extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [

            'id_admin' => $this->id_admin,

            'email' => $this->email,

            'password' => $this->password
        ];
    }
}
