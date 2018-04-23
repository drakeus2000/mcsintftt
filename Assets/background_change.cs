using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class background_change : MonoBehaviour {

    public Sprite slika2;
    public Sprite slika3;
    public Sprite slika4;
    public Sprite slika5;
    public Sprite slika6;
    public Sprite slika7;
    int myscore;
    public GameObject allthefunctions;
    Image m_Image;
    // Use this for initialization
    void Start () {
        m_Image = GetComponent<Image>();
    }
	
	// Update is called once per frame
	void Update () {
        myscore = allthefunctions.GetComponent<GameState>().GameComplete;
        if ((myscore > 20) && (myscore < 31)) m_Image.sprite = slika2;
        else if ((myscore >= 31) && (myscore < 52)) m_Image.sprite = slika3;
        else if ((myscore >= 52) && (myscore < 59)) m_Image.sprite = slika4;
        else if ((myscore >= 59) && (myscore < 80)) m_Image.sprite = slika5;
        else if ((myscore >= 80) && (myscore < 87)) m_Image.sprite = slika6;
        else if (myscore >= 87) m_Image.sprite = slika7;     
    }
}
