package br.com.garten.calmedumi;

public class Amostra {
	private String amostraGarten;
	private String amostraLaboratorio;
	
	
	public Amostra() {
		this.amostraGarten = "";
		this.amostraLaboratorio = "";
}
	public String getAmostraGarten() {
		return amostraGarten;
	}
	public void setAmostraGarten(String amostraGarten) {
		this.amostraGarten = amostraGarten;
	}
	public String getAmostraLaboratorio() {
		return amostraLaboratorio;
	}
	public void setAmostraLaboratorio(String amostraLaboratorio) {
		this.amostraLaboratorio = amostraLaboratorio;
	}
	public double amostraLaboratorioDouble() {

		return Double.parseDouble(amostraLaboratorio);
	}
	public double amostraGartenDouble() {
		// TODO Auto-generated method stub
		return Double.parseDouble(amostraGarten);
	}
	
	
}
