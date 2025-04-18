\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    d'8\p b16( c) d( b) es( c) d8 b16( c) d( b) c( a)
    b1
    c2 b
    d8 b16( c) d( b) es( c) d2
    d h~
    h c
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    b'8\p g16( a) b( g) c( a) b8 g16( a) b( g) a( fis)
    g1
    a2 d,
    b'8 g16( a) b( g) c( a) b2
    h f~
    f4 g g2
  }
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    d4^\solo d8 d g4 g8 b
    fis4. fis8 g8. g16 g4
    r2 g8 g16 g d8 g
    f!8. f16 f4 r8 d d es
    f f f es16 d es4 es
  }
}

BassoLyrics = \lyricmode {
  Do -- mi -- ne De -- us cre --
  a -- tor o -- mni -- um,
  ac -- ci -- pe sa -- cri --
  fi -- ci -- um pro u -- ni --
  ver -- so po -- pu -- lo tu -- o,
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    g1-\tasto
    g
    g2 g
    g1
    g
    g2 c
  }
}

BassFigures = \figuremode {
  r1
  <5 3>
  <7\\ 4 2>2 <5 3>
  r1
  <7 _!>
  r
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
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
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
