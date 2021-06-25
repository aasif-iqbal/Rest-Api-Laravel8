<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;

    protected $table = 'tasks';

    protected $fillable = [
        'project_id',
        'name',
        'due_date'
    ];

    public function project()
    {
         return $this->belongsTo(Project::class);
    }

    /*
     * An accessor transforms an Eloquent attribute value when it is accessed.
     * To define an accessor, create a get{Attribute}Attribute method on your model
     * where {Attribute} is the "studly" cased name of the column you wish to access.
     */
    
    public function getPriorityAttribute()
    {
        //if due_date is present(or Set) then priority is High, if null Then its Low
        return ($this->due_date) ? 'High' : 'Low';
    }

}
