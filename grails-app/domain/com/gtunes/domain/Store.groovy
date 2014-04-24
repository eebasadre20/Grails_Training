package com.gtunes.domain

/**
 * Created by root on 4/23/14.
 */
class Store {
    String name

    static hasMany = [albums: Album]
    static constraints = {
        name blank: false
    }
}
