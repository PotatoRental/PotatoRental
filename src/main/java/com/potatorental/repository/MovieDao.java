package com.potatorental.repository;

import com.potatorental.model.Movie;

import java.util.List;

/**
 * User: milky
 * Date: 5/6/13
 * Time: 8:27 PM
 */
public interface MovieDao {

    public List<Movie> getAllMovies();

    public Movie getMovie(Integer movieid);


}