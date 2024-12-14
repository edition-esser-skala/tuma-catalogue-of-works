\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Larghetto"
    R1.
    r4 d'2 h4 c( d)
    d,2 r r \gotoBar "7"
    gis4 a gis1
    a r2
    R1.*2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Larghetto"
    e4( f) e( f) e-! a-!
    a2(\trill gis) r
    gis4( a) gis( a) gis-! h-! \gotoBar "7"
    d4 c h1
    a r2
    R1.*2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
    R1.*7
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
    R1.*3 \gotoBar "7"
    r2 gis'^\solo gis
    a h gis
    a4 gis a2 a
    a1 a2
  }
}

AltoLyrics = \lyricmode {
  A -- gnus
  De -- i, qui
  tol -- _ lis pec --
  ca -- ta
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
    R1.*3 \gotoBar "7"
    r2 h^\solo h
    c d h
    c4 h c2 e
    e1 d2
  }
}

TenoreLyrics = \lyricmode {
  A -- gnus
  De -- i, qui
  tol -- _ lis pec --
  ca -- ta
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Larghetto"
    R1.*7
  }
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "Larghetto"
    a1.-\solo
    h
    h \gotoBar "7"
    e1 e,2
    a d e
    a,1.
    f'
  }
}

BassFigures = \figuremode {
  r1.
  <7>2 <6\\>1
  <\t>1.
  <7 _+>4 <6 4> <5 _+>1
  r2 <6 _!> <_+>
  r1.
  <7>1 <6>2
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
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

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
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
