cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  peripheral-vascular-disease-elixhauser-primary-care-nonruptured---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-nonruptured---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  peripheral-vascular-disease-elixhauser-primary-care-translumin---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-translumin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-nonruptured---primary/output
  axillary-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: axillary-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-translumin---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-emerg---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-emerg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: axillary-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  arteriovenous-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: arteriovenous-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-emerg---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-aortouniiliac---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-aortouniiliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: arteriovenous-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  renal-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: renal-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-aortouniiliac---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-pedis---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-pedis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: renal-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  aneurysmal-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: aneurysmal-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-pedis---primary/output
  brachial-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: brachial-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: aneurysmal-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-replace---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-replace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: brachial-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-anastom---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-anastom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-replace---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-segment---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-segment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-anastom---primary/output
  intermittent-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: intermittent-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-segment---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-endov---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-endov---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: intermittent-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  tibial-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: tibial-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-endov---primary/output
  thoracoabdominal-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: thoracoabdominal-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: tibial-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-graft---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: thoracoabdominal-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-atherosclerosis---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-atherosclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-graft---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-atheroma---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-atheroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-atherosclerosis---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-anomaly---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-anomaly---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-atheroma---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-gangrene---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-anomaly---primary/output
  superficial-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: superficial-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-gangrene---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-peron---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-peron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: superficial-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-claudication---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-claudication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-peron---primary/output
  visceral-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: visceral-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-claudication---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-thrombosis---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: visceral-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  splenic-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: splenic-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-thrombosis---primary/output
  internal-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: internal-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: splenic-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-ulcer---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: internal-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  infrarenal-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: infrarenal-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-ulcer---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-ischaemia---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-ischaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: infrarenal-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  carotid-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: carotid-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-ischaemia---primary/output
  peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: carotid-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-obliteran---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-obliteran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-unspecified---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-obliteran---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-endarterectomy---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-endarterectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-unspecified---primary/output
  cerebral-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: cerebral-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-endarterectomy---primary/output
  other-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: other-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cerebral-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-bifurc---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-bifurc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: other-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-subclavian---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-subclavian---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-bifurc---primary/output
  external-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: external-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-subclavian---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-prosth---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-prosth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: external-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  arterial-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: arterial-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-prosth---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-letter---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: arterial-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  superior-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: superior-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-letter---primary/output
  common-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: common-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: superior-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-operation---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: common-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-ulnar---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-ulnar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-operation---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-repair---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-ulnar---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-monitoring---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-repair---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-embolectomy---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-embolectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-monitoring---primary/output
  popliteal-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: popliteal-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-embolectomy---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-reconstruction---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-reconstruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: popliteal-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-buerger's---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-buerger's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-reconstruction---primary/output
  congenital-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: congenital-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-buerger's---primary/output
  radial-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: radial-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: congenital-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  femoral-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: femoral-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: radial-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-posterior---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: femoral-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-inferior---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-inferior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-posterior---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-extremity---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-extremity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-inferior---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-dissection---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-dissection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-extremity---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-pvd---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-pvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-dissection---primary/output
  hepatic-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: hepatic-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-pvd---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-anterior---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: hepatic-peripheral-vascular-disease-elixhauser-primary-care---primary/output
  peripheral-vascular-disease-elixhauser-primary-care-coeliac---primary:
    run: peripheral-vascular-disease-elixhauser-primary-care-coeliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-anterior---primary/output
  single-peripheral-vascular-disease-elixhauser-primary-care---primary:
    run: single-peripheral-vascular-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: peripheral-vascular-disease-elixhauser-primary-care-coeliac---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: single-peripheral-vascular-disease-elixhauser-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
