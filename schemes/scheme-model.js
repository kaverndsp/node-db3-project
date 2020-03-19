const db = require('../data/db-config.js');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find(){
    return db('schemes');
}

function findById(id) {
    return db('schemes').where({id}).first();
}

function findSteps(id) {
    return db('schemes').join('steps', 'steps.scheme_id', '=', 'schemes.id').where('schemes.id', id);
}

function add(req){
    return db('schemes').insert(req).then(scheme => {
        return scheme;
    })
}

function update(req, id){
    return db('schemes').where('id', id).update(req);
}

function remove(id) {
    return db("schemes").where('id', id).del()
    .then(item => {
        return item
    });
}

