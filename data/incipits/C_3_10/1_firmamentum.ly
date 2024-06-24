\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    r2 r8 a''16(\p fis) fis( d) d( a')
    h8 h16( g) g( d) d( h') a8 a16( fis) fis( d) d( a')
    g8 g16( e) e( cis) cis( e) g8 g16( e) e( cis) cis( e)
    a,8 a'16( fis) d( a) a( fis) fis8 d'16( a) a( fis) fis( d)
    d8 a''16( fis) fis( d) d( c) h8 h'16( g) g( d) d( h)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    r2 r8 fis(-.\p fis-. fis-.)
    g( g g g) a( a a a)
    h( h e, e) e( e a, a)
    a( a a a) a( fis' fis fis)
    a( a a a) d,( d d d)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 a'8^\solo a d2~
    d1~
    d4 cis cis8 cis e a,16 g
    fis4 fis a a
    d8 c c d16 a h4 h
  }
}

SopranoLyrics = \lyricmode {
  Fir -- ma -- men --

  tum et re -- fu -- gi -- um
  me -- um, sa -- lus
  et pro -- te -- cti -- o me -- a,
}

Organo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Adagio"
    d4-\solo r r8 d(-.\p d-. d-.)
    g( g g g) fis( fis fis fis)
    e( e e e) a,( a cis cis)
    d( d d d) d( d d d)
    fis( fis fis fis) g( g g g)
  }
}

BassFigures = \figuremode {
  r1
  r
  <7>4 <6> <7> <6>
  r1
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
