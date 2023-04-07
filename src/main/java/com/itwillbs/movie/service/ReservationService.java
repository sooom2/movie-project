package com.itwillbs.movie.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.itwillbs.movie.mapper.*;


@Service
public class ReservationService {
	@Autowired
	private MyBatisMapper mapper;
	
	public List<HashMap<String, String>> selectCinema() {
		
		return mapper.selectCinema();
	}

}
