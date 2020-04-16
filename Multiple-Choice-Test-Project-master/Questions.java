import java.awt.BorderLayout;
import java.awt.Font;

import javax.swing.JFrame;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.JLabel;
import java.awt.Color;

public class Questions {
	private static JTextField txtAddQuestion;
	private static JTextField textField;
	  public static void main(String[] args) {
	      
	      JFrame QFrame = new JFrame("A JFrame");
	      QFrame.setSize(864, 911);
	      QFrame.setLocation(300,200);
	      QFrame.getContentPane().setLayout(null);
	      
	      txtAddQuestion = new JTextField();
	      txtAddQuestion.setBounds(144, 126, 583, 193);
	      txtAddQuestion.setBackground(Color.WHITE);
	      QFrame.getContentPane().add(txtAddQuestion);
	      txtAddQuestion.setColumns(10);
	      
	      JLabel lblAddQuestion = new JLabel("Add Question");
	      lblAddQuestion.setBounds(339, 12, 151, 15);
	      lblAddQuestion.setFont(new Font("Serif",Font.BOLD, 18 ));
	      QFrame.getContentPane().add(lblAddQuestion);
	      
	      JLabel lblTypeQuestion = new JLabel("Type Question:");
	      lblTypeQuestion.setBounds(144, 99, 112, 15);
	      QFrame.getContentPane().add(lblTypeQuestion);
	      
	      JLabel lblTypeAnswer = new JLabel("Type Answer:");
	      lblTypeAnswer.setBounds(144, 386, 112, 15);
	      QFrame.getContentPane().add(lblTypeAnswer);
	      
	      textField = new JTextField();
	      textField.setBounds(144, 413, 583, 83);
	      QFrame.getContentPane().add(textField);
	      textField.setColumns(10);
	      
	      JLabel lblAnswerLetterA = new JLabel("Answer letter? a, b, c, or d?");
	      lblAnswerLetterA.setBounds(144, 556, 241, 15);
	      QFrame.getContentPane().add(lblAnswerLetterA);
	      QFrame.setVisible(true);
	      
	    }
}
