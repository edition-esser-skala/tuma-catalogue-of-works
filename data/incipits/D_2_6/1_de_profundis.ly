\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    r2 d4. d8
    es4 d e fis
    g g8 d' g4. f!8
    es4 r8 es d8. d16 c8 d
    d4 c d2
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    r2 b4. b8
    c4 b c4. c8
    d4 d r8 b' a4
    g8 g c4. b8 a4
    g g fis2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    r2 g4. g8
    g4 g g a
    b b r8 d d4
    es r8 c d4 es8 d
    g,4. g8 a2
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    g2 g
    g g
    g r8 g' d'4~
    d8 c r c, g'4. f8
    es2 d
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    r2 d4.\pocoP d8
    es4 d e fis
    g4. d'8\f g4. f!8
    es4 r8 es d4 c8 d
    d4 c\trill d2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    r2 b4.\pocoP b8
    c4 b c a
    b2 r8 b'\f a4
    g8 g c4. b8 a4
    g2 fis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r2 d4.^\tutti d8
    es4 d e fis
    g g8 d' g4. f!8
    es4 r8 es d8. d16 c8 d
    d4 c8. c16 d2
  }
}

SopranoLyrics = \lyricmode {
  De pro --
  fun -- dis, de pro --
  fun -- dis cla -- ma -- _
  vi, cla -- ma -- vi ad te,
  Do -- _ mi -- ne;
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r2 b4.^\tutti b8
    c4 b c4. c8
    d4 d r8 b' a4
    g8 g c4. b8 a4
    g g8. g16 fis2
  }
}

AltoLyrics = \lyricmode {
  De pro --
  fun -- dis, de pro --
  fun -- dis cla -- ma --
  vi, cla -- ma -- vi ad
  te, Do -- mi -- ne;
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    r2 g4.^\tutti g8
    g4 g g a
    b b r8 d d4
    es r8 c d8. d16 es8 d
    g,4. g8 a2
  }
}

TenoreLyrics = \lyricmode {
  De pro --
  fun -- dis, de pro --
  fun -- dis cla -- ma --
  vi, cla -- ma -- vi ad te,
  Do -- mi -- ne;
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    g4.^\tutti g8 g2
    g2 g4 g
    g g r8 g' d'4~
    d8 c r c, g'8. g16 g8 f
    es4. es8 d2
  }
}

BassoLyrics = \lyricmode {
  De pro -- fun --
  dis, de pro --
  fun -- dis cla -- ma --
  vi, cla -- ma -- vi ad te,
  Do -- mi -- ne;
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    g2 g
    g g
    g r8 g' d'4~
    d8 c r c, g'4. f8
    es2 d
  }
}

BassFigures = \figuremode {
  <1>2 <5 3>
  <6 4>4 <5 3> <6! 4> <7\\ 4 2>
  <8>2. <5 4>8 <\t _!>
  <4 2> <5> r4 <5 4>8 <\t 3> <4 2> <6>
  <7>4 <6> <_+>2
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
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
