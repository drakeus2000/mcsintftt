using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class clicked_on_square : MonoBehaviour {
    public GameObject ovdesusveskripte;

	// Use this for initialization
	void Start () {

    }

    public void OnMouseDown()
    {
        
        GameObject.Find("skripte").GetComponent<priming>().Clicked_on_kocka();
        this.GetComponent<Collider2D>().enabled = false;
        this.GetComponent<SpriteRenderer>().enabled = false;
    }
    // Update is called once per frame
    void Update () {
		
	}
}
