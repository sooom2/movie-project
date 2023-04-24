package com.itwillbs.movie.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.itwillbs.movie.mapper.*;
import com.itwillbs.movie.vo.*;


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



	public List<HashMap<String, String>> selectmoviesList(String CnItemCd) {
		return mapper.selectmoviesList(CnItemCd);
	}

	public List<HashMap<String, String>> selectMovieTimeList(String cnItemCd, String mvItemCd, String dateCd) {
		return mapper.selectMovieTimeList(cnItemCd, mvItemCd, dateCd);
	}


	public List<HashMap<String, String>> selectReservationList(String schCd) {
		return mapper.selectReservationList(schCd);
	}

	public HashMap<String, String> selectMemberId(String id) {
		return mapper.selectMemberId(id);
	}

	public int insertReservation(ReservationVO vo, String id) {
		return mapper.insertReservation(vo, id);
	}

	

}
