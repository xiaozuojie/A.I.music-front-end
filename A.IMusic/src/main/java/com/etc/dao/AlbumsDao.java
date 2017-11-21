package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Albums;

public interface AlbumsDao {
	/**
	 * ��ȡ����ר��(�����ղ���)
	 * @return
	 */
    public List<Albums> allalubms();
    /**
	 * ��ȡ����ר��(���շ���ʱ��)
	 * @return
	 */
    public List<Albums> allalubmstime();
    /**
     * ����ר��id��ȡר������
     * 
     */
    public List<Albums> allalbumsid(int albumsid);
    /**
     * ���ݸ�������ȡ�����ר��
     * 
     */
    public List<Albums> allalbumssinger(@Param(value="singername") String singername);
    
}
