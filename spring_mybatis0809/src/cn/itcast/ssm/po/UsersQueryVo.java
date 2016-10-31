package cn.itcast.ssm.po;

import java.util.List;

public class UsersQueryVo {
	private List<Integer> ids;
	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}

	private UsersCustom usersCustom;

	public UsersCustom getUsersCustom() {
		return usersCustom;
	}

	public void setUsersCustom(UsersCustom usersCustom) {
		this.usersCustom = usersCustom;
	}
	
}
