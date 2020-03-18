const db = require('../data/db-config.js');

module.exports = {
    find,
    findById,
    findSteps,
    

}

function find(){
    return db('schemes');
}

function findById(id) {
    return db('schemes').where({id}).first();
}

function findSteps(id) {
    return db('schemes').join('steps', 'steps.scheme_id', '=', 'schemes.id').where('schemes.id', id)
}