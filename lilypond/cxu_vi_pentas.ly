\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "a4")
#(set-global-staff-size 21)

\header {
  title = "Ĉu Vi Pentas?"
  subtitle = ""
  composer = "Persone"
  tagline = ""
}

notes = \relative c' {
  \key e \minor
  e2 b' | c4 b g2 | a4 b a g | e2 e | \break
  e2 b' | c4 b g2 | a4 b a g | e2 e | \break
  g2 d' | e4 d b2 | c4 b a g | b2 b | \break
  g2 d' | e4 d b2 | c4 b a g | b2 b | \break
  fs2 b4 b | a g fs2 | e4 fs g e | fs2 b, | \break
  fs'2 b4 b | a g fs2 | e4 fs g e | fs2 b, | \break
  c2 e4 fs | g a fs2 | g4 fs d fs | e2 e | \break
  c2 e4 fs | g a fs2 | g4 fs d fs | e2 e | \break
  e2 b' | g d | e1~ | e
  \bar "||"
}

<<
\new ChordNames {
  \set chordChanges = ##t
  \chordmode {
    e1:m g a:m e:m
    e:m g a:m e:m
    g b:m c e:m
    g b:m c e:m
    b d e:m b
    b d e:m b
    c d d e:m
    c d d e:m
    e:m c2 d e:m e:m
  }
}

\new Staff {
  \notes
}

\addlyrics {
  Ĉu vi pent -- as nun ke vi mil -- it -- serv -- is?
  Dum la re -- kret -- ad', vi ja ve -- re verv -- is.
  Ti -- am pens -- is vi, "\"mi" far -- iĝ -- os vi -- "ro\","
  Ramp -- is kun fi -- er' tra la kot' kaj ŝmi -- ro.
  Ho, ki -- a mal -- bon -- ŝanc', start -- as nun mil -- it -- o.
  Ĉu sur -- priz -- iĝ -- as "vi? Ha!" Ki -- a hi -- po -- krit -- o!
  Nun paf -- as vi al land' ki -- e vi jam est -- is.
  Jes, vi viz -- it -- is ĝin, kaj vi ti -- e fest -- is
  En la I J K.
}

\addlyrics {
  Ĉu vi pent -- as nun ke vi mil -- it -- serv -- is?
  Dum la bomb -- at -- ak', vi ja ve -- re nerv -- is.
  Nun malam -- ik -- ar -- me' ven -- as kun im -- pe -- to.
  Sal -- "tu el" la fos -- aĵ', le -- vu baj -- on -- et -- on!
  Fi -- mal -- am -- ik -- sol -- dat' frap -- as vin al -- te -- re.
  Li -- an in -- dul -- gon nun pet -- as vi sin -- cer -- e.
  Kaj li re -- ten -- as sin, kvan -- kam li pik -- ont -- is,
  Kaj vi rek -- on -- as lin, vi lin jam ren -- kont -- is
  En la I J K.
}
>>








