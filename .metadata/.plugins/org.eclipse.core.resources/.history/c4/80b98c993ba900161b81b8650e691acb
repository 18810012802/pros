package cn.it.weather;

public class _Main {
/**
 * ÌìÆøÔ¤±¨
 * @param args
 */
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WeatherWS ws=new WeatherWS();
		WeatherWSSoap wsSoap=ws.getWeatherWSSoap();
		ArrayOfString regionProvince=wsSoap.getRegionProvince();
		for(String temp:regionProvince.getString()){
			System.out.println(temp);
		}
		ArrayOfString cityInfo=wsSoap.getSupportCityString("3113");
		for(String temp:cityInfo.getString()){
			System.out.println(temp);
		}
		ArrayOfString weatherInfo=wsSoap.getWeather("124", "");
		for(String temp:weatherInfo.getString()){
			System.out.println(temp);
		}
	}

}
