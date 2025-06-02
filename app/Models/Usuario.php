<?php
// app/Models/Usuario.php

namespace App\Models;

use Laravel\Sanctum\HasApiTokens;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Usuario extends Authenticatable
{
    use HasApiTokens, HasFactory;

    protected $table = 'usuarios';

    protected $fillable = [
        'nombre',
        'email',
        'password_hash',
        'role_id',
    ];
    
    protected $hidden = [
        'password_hash',
        'remember_token',
    ];

    
    public function getAuthPassword()
    {
        return $this->password_hash;
    }

    public function role(): BelongsTo
    {
        return $this->belongsTo(Role::class, 'role_id');
    }

    
    public function empresa(): HasOne
    {
        return $this->hasOne(Empresa::class, 'usuario_id');
    }

    public function citas(): HasMany
    {
        return $this->hasMany(Cita::class, 'cliente_id');
    }
}
