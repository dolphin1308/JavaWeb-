package util;
import com.alibaba.dashscope.aigc.generation.Generation;
import com.alibaba.dashscope.aigc.generation.GenerationOutput;
import com.alibaba.dashscope.aigc.generation.GenerationResult;
import com.alibaba.dashscope.aigc.generation.models.QwenParam;
import com.alibaba.dashscope.common.Message;
import com.alibaba.dashscope.common.MessageManager;
import com.alibaba.dashscope.common.Role;
import com.alibaba.dashscope.utils.Constants;
public class AIGC {
    private static String apiKey="阿里的openai";
    public static String query(String queryMessage) {
        Constants.apiKey = apiKey;
        try {
            Generation gen = new Generation();
            MessageManager msgManager = new MessageManager(10);
            Message systemMsg = Message.builder().role(Role.SYSTEM.getValue())
                    .content("你现在是一个关于在线风景预约管理的人工客服，善于帮助游客解决问题！")
                    .build();
            Message userMsg = Message.builder().role(Role.USER.getValue()).content(queryMessage).build();
            msgManager.add(systemMsg);
            msgManager.add(userMsg);
            QwenParam param = QwenParam.builder().model(Generation.Models.QWEN_TURBO).messages(msgManager.get()).resultFormat(QwenParam.ResultFormat.MESSAGE).build();
            GenerationResult result = gen.call(param);
            GenerationOutput output = result.getOutput();
            Message message = output.getChoices().get(0).getMessage();
            return message.getContent();
        } catch (Exception e) {
            return "AI 繁忙，请稍后再试～";
        }
    }
}
