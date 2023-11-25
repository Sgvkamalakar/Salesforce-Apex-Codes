public class StringArrayTest {
    public static List<String> generateStringArray(Integer num){
		List<String> res=new List<String>();
        for(Integer i=0;i<num;i++)
        {
			res.add('Test '+i);
        }
        return res;
    }
}