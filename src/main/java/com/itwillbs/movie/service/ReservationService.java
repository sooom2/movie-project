package com.itwillbs.movie.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.itwillbs.movie.mapper.*;


@Service
public class ReservationService {
	@Autowired
	private ReservationMapper mapper;
	
	public List<HashMap<String, String>> selectCinema() {
		return mapper.selectCinema();
	}

	public List<HashMap<String, String>> selectMovieInfo() {
		return mapper.selectMovieInfo();
	}

//	public List<HashMap<String, String>> selectMovieTime() {
//		return mapper.selectMovieTime();
//	}

	public HashMap<String, String> selectMovie(String cd) {
		return mapper.selectMovie(cd);
	}

}
