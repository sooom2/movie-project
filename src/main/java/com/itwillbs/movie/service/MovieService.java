package com.itwillbs.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.movie.mapper.MovieRegisterMapper;

@Service
public class MovieService {
	
	@Autowired
	private MovieRegisterMapper mapper;

}
