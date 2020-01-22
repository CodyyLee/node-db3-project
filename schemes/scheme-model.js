const db = require('../data/dbConfig.js');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find() {
    return db("schemes");
}

function findById(id) {
    return db("schemes").where("id", id);
}

function findSteps(id) {
    return db("steps").where('scheme_id', id);
}

function add(scheme) {
    return db("schemes").insert(scheme);
}

function update(scheme, id) {
    return db("schemes").where('id', id).update(scheme);
}

function remove(id) {
    return db("schemes").where('id', id).del();
}