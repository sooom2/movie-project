package com.itwillbs.movie.vo;

public class ReservationVO {
	private String CinemaCd;
	private String MovieCd;
	private String ScreenTime;
	private String ScreenCd;
	private String MovieNm;
	private String CinemaNm;
	private String HidMovieUrl;
	private String HidRating;
	private String schCd;
	private String showDate;
	private String genre;
	private String ScreenNm;
	private String MovieDate;
	private String totalAmt;
	private String totalCnt;
	private String NormalCnt;
	private String OldCnt;
	private String YoungCnt;
	private String TicketAmt;
	private String NormalPrice;
	private String OldPrice;
	private String YoungPrice;
	private String seatNm;
	private String seatLine;
	private String seatNum;
	public ReservationVO() {
	}
	
	public ReservationVO(String cinemaCd, String movieCd, String screenTime, String screenCd, String movieNm,
			String cinemaNm, String hidMovieUrl, String hidRating, String schCd, String showDate, String genre,
			String screenNm, String movieDate, String totalAmt, String totalCnt, String normalCnt, String oldCnt,
			String youngCnt, String ticketAmt, String normalPrice, String oldPrice, String youngPrice, String seatNm,
			String seatLine, String seatNum) {
		super();
		CinemaCd = cinemaCd;
		MovieCd = movieCd;
		ScreenTime = screenTime;
		ScreenCd = screenCd;
		MovieNm = movieNm;
		CinemaNm = cinemaNm;
		HidMovieUrl = hidMovieUrl;
		HidRating = hidRating;
		this.schCd = schCd;
		this.showDate = showDate;
		this.genre = genre;
		ScreenNm = screenNm;
		MovieDate = movieDate;
		this.totalAmt = totalAmt;
		this.totalCnt = totalCnt;
		NormalCnt = normalCnt;
		OldCnt = oldCnt;
		YoungCnt = youngCnt;
		TicketAmt = ticketAmt;
		NormalPrice = normalPrice;
		OldPrice = oldPrice;
		YoungPrice = youngPrice;
		this.seatNm = seatNm;
		this.seatLine = seatLine;
		this.seatNum = seatNum;
	}

	public String getCinemaCd() {
		return CinemaCd;
	}
	public void setCinemaCd(String cinemaCd) {
		CinemaCd = cinemaCd;
	}
	public String getMovieCd() {
		return MovieCd;
	}
	public void setMovieCd(String movieCd) {
		MovieCd = movieCd;
	}
	public String getScreenTime() {
		return ScreenTime;
	}
	public void setScreenTime(String screenTime) {
		ScreenTime = screenTime;
	}
	public String getScreenCd() {
		return ScreenCd;
	}
	public void setScreenCd(String screenCd) {
		ScreenCd = screenCd;
	}
	public String getMovieNm() {
		return MovieNm;
	}
	public void setMovieNm(String movieNm) {
		MovieNm = movieNm;
	}
	public String getCinemaNm() {
		return CinemaNm;
	}
	public void setCinemaNm(String cinemaNm) {
		CinemaNm = cinemaNm;
	}
	public String getHidMovieUrl() {
		return HidMovieUrl;
	}
	public void setHidMovieUrl(String hidMovieUrl) {
		HidMovieUrl = hidMovieUrl;
	}
	public String getHidRating() {
		return HidRating;
	}
	public void setHidRating(String hidRating) {
		HidRating = hidRating;
	}
	public String getSchCd() {
		return schCd;
	}
	public void setSchCd(String schCd) {
		this.schCd = schCd;
	}
	public String getShowDate() {
		return showDate;
	}
	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getScreenNm() {
		return ScreenNm;
	}
	public void setScreenNm(String screenNm) {
		ScreenNm = screenNm;
	}
	public String getMovieDate() {
		return MovieDate;
	}
	public void setMovieDate(String movieDate) {
		MovieDate = movieDate;
	}
	public String getTotalAmt() {
		return totalAmt;
	}
	public void setTotalAmt(String totalAmt) {
		this.totalAmt = totalAmt;
	}
	public String getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(String totalCnt) {
		this.totalCnt = totalCnt;
	}
	public String getNormalCnt() {
		return NormalCnt;
	}
	public void setNormalCnt(String normalCnt) {
		NormalCnt = normalCnt;
	}
	public String getOldCnt() {
		return OldCnt;
	}
	public void setOldCnt(String oldCnt) {
		OldCnt = oldCnt;
	}
	public String getYoungCnt() {
		return YoungCnt;
	}
	public void setYoungCnt(String youngCnt) {
		YoungCnt = youngCnt;
	}
	public String getTicketAmt() {
		return TicketAmt;
	}
	public void setTicketAmt(String ticketAmt) {
		TicketAmt = ticketAmt;
	}
	public String getNormalPrice() {
		return NormalPrice;
	}
	public void setNormalPrice(String normalPrice) {
		NormalPrice = normalPrice;
	}
	public String getOldPrice() {
		return OldPrice;
	}
	public void setOldPrice(String oldPrice) {
		OldPrice = oldPrice;
	}
	public String getYoungPrice() {
		return YoungPrice;
	}
	public void setYoungPrice(String youngPrice) {
		YoungPrice = youngPrice;
	}
	public String getSeatNm() {
		return seatNm;
	}
	public void setSeatNm(String seatNm) {
		this.seatNm = seatNm;
	}
	public String getSeatLine() {
		return seatLine;
	}
	public void setSeatLine(String seatLine) {
		this.seatLine = seatLine;
	}
	public String getSeatNum() {
		return seatNum;
	}
	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}
	@Override
	public String toString() {
		return "ReservationVO [CinemaCd=" + CinemaCd + ", MovieCd=" + MovieCd + ", ScreenTime=" + ScreenTime
				+ ", ScreenCd=" + ScreenCd + ", MovieNm=" + MovieNm + ", CinemaNm=" + CinemaNm + ", HidMovieUrl="
				+ HidMovieUrl + ", HidRating=" + HidRating + ", schCd=" + schCd + ", showDate=" + showDate + ", genre="
				+ genre + ", ScreenNm=" + ScreenNm + ", MovieDate=" + MovieDate + ", totalAmt=" + totalAmt
				+ ", totalCnt=" + totalCnt + ", NormalCnt=" + NormalCnt + ", OldCnt=" + OldCnt + ", YoungCnt="
				+ YoungCnt + ", TicketAmt=" + TicketAmt + ", NormalPrice=" + NormalPrice + ", OldPrice=" + OldPrice
				+ ", YoungPrice=" + YoungPrice + ", seatNm=" + seatNm + ", seatLine=" + seatLine + ", seatNum="
				+ seatNum + "]";
	}
	
	
}
