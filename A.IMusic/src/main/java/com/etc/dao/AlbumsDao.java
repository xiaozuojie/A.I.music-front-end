package com.etc.dao;

import java.util.List;

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
	 * ����id��ȡר������
	 * @return
	 */
    public List<Albums> allalubms(int albumsid);
}
