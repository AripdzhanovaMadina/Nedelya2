package ZD2;

import javax.swing.JFrame;
import javax.swing.UIManager;
import javax.swing.UIManager.LookAndFeelInfo;

public class QueryFrameSettings extends JFrame
{
    private static final long serialVersionUID = 7336748332948474910L;


    public QueryFrameSettings()
    {
        try {
            for (LookAndFeelInfo info : UIManager.getInstalledLookAndFeels())
            {
                if("Nimbus".equals(info.getName()))
                {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        }
        catch (Exception e)
        {

        }
        setDefaultCloseOperation(EXIT_ON_CLOSE);
    }
}

