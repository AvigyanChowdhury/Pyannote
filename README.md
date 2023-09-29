# Integration of Pyannote model and Evaluation for Speaker Diarization
 Metrics calculated using Diarization Metric in One repository

Support ``DER``, ``JER``, ``CDER``, ``SER`` and ``BER``

## Usage

3. Run Docker image in order to test with existing audio file from Voxconverse<br />
```docker push avigyan/pyannote```<br />
```docker run avigyan/pyannote```<br />

##In order to test using custom wav files perform the following:
1.Clone repository<br />
2.Add wav file and rttm in app folder<br />
3.change wav file name in inference.py<br />
4.change reference rttm name in main.py<br />
5.Build new image or RUN<br />

#new image <br />
'''docker build -t pyannote:tagname'''<br />
#run<br />
'''docker run pyannote:tagname'''<br />



Results:
```
 collar    MS    FA    SC    OVL    DER    JER    CDER    SER    BER    ref_part    fa_dur    fa_seg    fa_mean
--------  ----  ----  ----  -----  -----  -----  ------  -----  -----  ----------  --------  --------  ---------
(value)  (val) (val)  (val) (val) (val)  (value) (value) (val) (value)   (value)    (value)   (value)   (value)
```

* ``collar``, ``MS``, ``FA``, ``SC``, ``OVL``, ``DER``, ``JER`` is from the modified dscore [URL](https://github.com/liutaocode/dscore-ovl), original is [URL](https://github.com/nryant/dscore). ``OVL`` means errors occurring in overlapped speeches.
* ``CDER`` is from [URL](https://github.com/SpeechClub/CDER_Metric)
* ``SER``, ``BER``, ``ref_part``, ``fa_dur``, ``fa_seg``, ``fa_mean`` is from [URL](https://github.com/X-LANCE/BER)
* pyannote-audio is from [URL](https://github.com/pyannote/pyannote-audio)

## Test Case
This case is from [VBx](https://github.com/BUTSpeechFIT/VBx)

```python run_for_all.py -r cases/callhome_part2_ref_gt.rttm -s ./cases/prediction_callhome_part2_vbx.rttm```

Results:
```
  collar    MS    FA    SC    OVL    DER    JER    CDER    SER    BER    ref_part    fa_dur    fa_seg    fa_mean
--------  ----  ----  ----  -----  -----  -----  ------  -----  -----  ----------  --------  --------  ---------
    0.00  0.14  0.00  0.07   0.15   0.21   0.34    0.28   0.37   0.37        0.37      0.00      0.00       0.00
```



## Reference
* https://github.com/nryant/dscore
* https://github.com/liutaocode/dscore-ovl
* https://github.com/SpeechClub/CDER_Metric
* https://github.com/X-LANCE/BER
* https://github.com/pyannote/pyannote-audio
