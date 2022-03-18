package com.mulcam.mini.dto;

public class Application {
	private String no;
	private String id;
	private String title;
	private String name;
	private String email;
	private String phone;
	private String etc;
	private String type;
	private String camera_type;
	private String video_type;
	private String effect_type;
	private String doc;
	private String confirm;
	private String modal;
	public Application() {}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCamera_type() {
		return camera_type;
	}
	public void setCamera_type(String camera_type) {
		this.camera_type = camera_type;
	}
	public String getVideo_type() {
		return video_type;
	}
	public void setVideo_type(String video_type) {
		this.video_type = video_type;
	}
	public String getEffect_type() {
		return effect_type;
	}
	public void setEffect_type(String effect_type) {
		this.effect_type = effect_type;
	}
	public String getDoc() {
		return doc;
	}
	public void setDoc(String doc) {
		this.doc = doc;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public String getModal() {
		return modal;
	}
	public void setModal(String modal) {
		this.modal = modal;
	}
	@Override
	public String toString() {
		return this.no;
	}
}
