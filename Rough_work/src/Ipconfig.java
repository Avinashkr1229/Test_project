import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Ipconfig 
{
	private static final String INET4ADDRESS = "172.8.9.28";

	private static final String IPV4_REGEX =
					"^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\." +
					"(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\." +
					"(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\." +
					"(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$";
	
	private static final Pattern IPV4_PATTERN = Pattern.compile(IPV4_REGEX);
	

	public static boolean isValidInet4Address(String ip) 
	{
		if (ip == null) 
		{
			return false;
		}

		Matcher matcher = IPV4_PATTERN.matcher(ip);

		return matcher.matches();
	}
	
	public static boolean get_result()
	{
		if (isValidInet4Address(INET4ADDRESS))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
