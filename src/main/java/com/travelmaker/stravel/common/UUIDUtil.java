package com.travelmaker.stravel.common;

import java.nio.ByteBuffer;
import java.util.UUID;

import org.springframework.stereotype.Component;
@Component
public class UUIDUtil {
	public static String GetUUID() {
		UUID uuid = UUID.randomUUID();
		long l = ByteBuffer.wrap(uuid.toString().getBytes()).getLong();
		return Long.toString(l, Character.MAX_RADIX);
	}

}
