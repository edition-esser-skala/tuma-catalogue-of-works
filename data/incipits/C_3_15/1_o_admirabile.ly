\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r8 a'^\solo f' d d8. cis16 cis8 e
    d16. d32 d8 r a d4 d
    es8. es16 d8 a b b b d
    d c c g a4 a
    r f' es d8 cis
  }
}

SopranoLyrics = \lyricmode {
  O ad -- mi -- ra -- bi -- le com --
  mer -- ci -- um! Cre -- a -- tor
  ge -- ne -- ris hu -- ma -- ni a -- ni --
  ma -- tum cor -- pus su -- mens
  de vir -- gi -- ne
}

Organo = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "[no tempo]"
    d2 e
    f1
    fis2 g
    e! f~
    f g4 a
  }
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
  >>
}
