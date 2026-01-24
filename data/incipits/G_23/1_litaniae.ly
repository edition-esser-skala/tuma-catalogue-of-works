\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key h \minor \time 3/2 \tempoMarkup "Larghetto"
    R1.*3
    r4 fis'\f ais,( h) h'8( a g fis)
    g4-! e-! gis,( a) a'8( g fis e)
    fis4 fis8.(\p g16) cis,4-! fis8.( g16) h,4-! fis'8.( g16)
    ais,4-! h( \hA ais) d( cis) eis,-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key h \minor \time 3/2 \tempoMarkup "Larghetto"
    R1.*3
    r4 fis'\f ais,( h) h'8( a g fis)
    g4-! e-! gis,( a) a'8( g fis e)
    fis4 fis8.(\p g16) cis,4-! fis8.( g16) h,4-! fis'8.( g16)
    ais,4-! d,( cis) h( ais) h-!
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key h \minor \time 3/2 \tempoMarkup "Larghetto" \autoBeamOff
    h'2.^\solo fis4 fis2
    d'2. h4 h2
    c h ais
    h r r
    R1.*3
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e
  e -- lei -- _
  son,
}

Alto = {
  \relative c' {
    \clef alto
    \key h \minor \time 3/2 \tempoMarkup "Larghetto" \autoBeamOff
    R1.
    fis2.^\solo fis4 fis2
    g fis e
    d r r
    R1.*3
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _
  son,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key h \minor \time 3/2 \tempoMarkup "Larghetto" \autoBeamOff
    R1.
    h2. cis4 d2
    e h cis
    d r r
    R1.*3
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei -- _
  son,
}

Basso = {
  \relative c {
    \clef bass
    \key h \minor \time 3/2 \tempoMarkup "Larghetto" \autoBeamOff
    R1.*7
  }
}

BassoLyrics = \lyricmode {
  %tacet
}

Organo = {
  \relative c {
    \clef bass
    \key h \minor \time 3/2 \tempoMarkup "Larghetto"
    h2-\solo h' r
    h, h' r
    e, d cis
    h r dis
    e r cis
    d!4 h'\p a2 g
    fis r r4 g,
  }
}

BassFigures = \figuremode {
  r1.
  r
  <6!>2 <6> <6\\>
  r1.
  r
  r2 <6> <7>4 <6>
  <_+>1 r4 <6\\>
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
      \new Lyrics \lyricsto Soprano \SopranoLyrics

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
