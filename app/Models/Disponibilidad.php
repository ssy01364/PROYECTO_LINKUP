<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\Empresa;

class Disponibilidad extends Model
{
    use HasFactory;

    protected $table = 'disponibilidad';

    protected $fillable = [
        'empresa_id',
        'inicio',
        'fin',
    ];

    protected $casts = [
        'inicio' => 'datetime',
        'fin'    => 'datetime',
    ];

    public function empresa(): BelongsTo
    {
        return $this->belongsTo(Empresa::class, 'empresa_id');
    }
}
