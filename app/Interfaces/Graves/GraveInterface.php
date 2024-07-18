<?php

namespace App\Interfaces\Graves;

interface GraveInterface
{
    public function all();

    public function getAll();

    public function store($request);

    public function show($id);

    public function update($request, $id);

    public function destroy($id);

    public function searchGraveInfo($request);
    
    public function filterSearch($request);

}