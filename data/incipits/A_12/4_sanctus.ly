\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \tempoMarkup "Largo"
    R1.*2
    g'1.\fermata
    R1.*2
    fis1.\fermata
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \tempoMarkup "Largo"
    R1.*2
    e1.\fermata
    R1.*2
    h1.\fermata
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Largo"
    r4 h'-! g( a) h( c)
    h-! e-! g,( a) h( c)
    h1.\fermata
    r4 fis'-! d( e) fis( g)
    fis-! h-! d,( e) fis( g)
    fis1.\fermata
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/2 \tempoMarkup "Largo"
    r4 g'-! e( fis) g( a)
    g2 e4( fis) g( a)
    g1.\fermata
    r4 d'-! h( cis) d( e)
    d2 h4( cis) d( e)
    d1.\fermata
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Largo"
    R1.*2
    h'1^\tutti h2\fermata
    R1.*2
    d1 d2\fermata
  }
}

SopranoLyrics = \lyricmode {
  San -- ctus,

  san -- ctus,
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Largo"
    R1.*2
    g'1^\tutti g2\fermata
    R1.*2
    fis1 fis2\fermata
  }
}

AltoLyrics = \lyricmode {
  San -- ctus,

  san -- ctus,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Largo"
    R1.*2
    e1^\tutti e2\fermata
    R1.*2
    h1 h2\fermata
  }
}

TenoreLyrics = \lyricmode {
  San -- ctus,

  san -- ctus,
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Largo"
    R1.*2
    e1^\tutti e,2\fermata
    R1.*2
    h''1 h,2\fermata
  }
}

BassoLyrics = \lyricmode {
  San -- ctus,

  san -- ctus,
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "Largo"
    e2-\solo r r
    e r r
    e1.-\tutti\fermata
    h2-\solo r r
    h r r
    h1.-\tutti\fermata
  }
}

BassFigures = \figuremode {
  r1.
  r
  r
  r
  r
  r
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
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
