package com.gtunes.domain

class Song {
    String title
    String artist
    Album albums

    static constraints = {
        title blank: false
        artist blank: false
    }
}
