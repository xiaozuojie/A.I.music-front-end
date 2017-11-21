package com.etc.service;

import java.util.List;

import com.etc.entity.Singer;

public interface SingerService {

	//��ȡ����ǰ���6������
	public List<Singer> getSingerbysix();
	//��ȡ����ǰ���10������
	public List<Singer> getSingerbysten();
	//��ȡ���Ÿ���ǰ��10����¼
	public List<Singer> getSingerbyremen();
	//��ȡ��פ�ĸ�������
	public List<Singer> getallsinger();
	//�����ղص�����������ֵ�����
	public List<Singer> getallSingerbyshouchang();
	//���ո��ֵı������ȡ���ֵ���Ϣ
	public List<Singer> getallSinerbyId(int SingerId);
	//���ݸ��ֵ���������ȡ���ֵ���Ϣ
	public List<Singer> getallsingerinfobysingername(String singername);
	
}
