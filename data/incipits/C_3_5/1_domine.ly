\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    h'1~\p
    h2 e
    fis1
    e2 d~
    d4 cis r h-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    g'1\p
    g
    a2. d,4
    e2 fis
    e4 fis r gis-!
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    d'8. d16 d4 h8 h c d
    d g, r g cis4 d8 e
    fis,4 r8 d fis fis fis gis
    ais4. cis8 d d h d
    gis, gis r a16 a a8 e r4
  }
}

SopranoLyrics = \lyricmode {
  Do -- mi -- ne in vir -- tu -- te
  tu -- a lae -- ta -- bi -- tur
  rex, et su -- per sa -- lu --
  ta -- re tu -- um ex -- ul --
  ta -- bit ve -- he -- men -- ter.
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Adagio"
    g'1
    e
    d
    cis2 h
    e4 dis r e-!
  }
}

BassFigures = \figuremode {
  r1
  <7>2 <6\\>
  r1
  <6\\>
  <7 _+>4 <7\\ 5>2 <_+>4
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
    \new FiguredBass { \BassFigures }
  >>
}
