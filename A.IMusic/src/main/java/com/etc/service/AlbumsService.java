package com.etc.service;

import java.util.List;

import com.etc.entity.Albums;

public interface AlbumsService {
	//�����ղ���
    public List<Albums> getallalbums();
    //���շ���ʱ��
    public List<Albums> getallalbumstime();
    //����ר��id
    public List<Albums> getallalbumsid(int albumsid);
    //���ݸ��ֻ�ȡ���ר��
    public List<Albums> getallalbumssingername(String singername);
    
}
