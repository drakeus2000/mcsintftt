using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class potatquit : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey("escape"))
            PlayerPrefs.SetString("unlocked", "false");
            Application.Quit();
    }
    public void quit_potato()
    {
        PlayerPrefs.SetString("unlocked", "false");
        Application.Quit();
    }
}