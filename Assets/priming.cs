using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class priming : MonoBehaviour {
    int x, y, counter;
    public int mera;
    public GameObject kocka;
	// Use this for initialization
	void Start () {
		
	}

    public void Clicked_on_kocka ()
    {
        counter++;
        if (counter > mera) Application.LoadLevel("Logo"); ;
        x = Random.Range(-7, 7);
        y = Random.Range(-3, 3);
        Vector2 pozicija = new Vector2(x, y);
        Instantiate(kocka, pozicija, Quaternion.Euler(0, 0, 0));
  //      prenesen_objekat.SetActive(false);
    }
    // Update is called once per frame
    void Update () {
		
	}
}
